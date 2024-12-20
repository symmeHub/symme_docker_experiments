from flask import Flask, request, jsonify
import os

app = Flask(__name__)

@app.route('/process', methods=['POST'])
def process_file():
    input_file = request.json.get('input_file')
    output_file = request.json.get('output_file')
    
    if not input_file or not output_file:
        return jsonify({"error": "input_file and output_file are required"}), 400
    
    input_path = os.path.join('/data', input_file)
    output_path = os.path.join('/data', output_file)
    
    try:
        with open(input_path, 'r') as f:
            content = f.read()
        
        with open(output_path, 'w') as f:
            f.write(content.upper())
        
        return jsonify({"message": "File processed successfully"}), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)