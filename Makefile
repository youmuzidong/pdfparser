

field_data:
	java -jar target/pdfparser-1.0-SNAPSHOT-jar-with-dependencies.jar \
		get_fields testpdfs/sample_form-filled.pdf

fill_fields:
	java -jar target/pdfparser-1.0-SNAPSHOT-jar-with-dependencies.jar \
        set_fields \
        testpdfs/sample_form-filled.pdf \
        output.pdf \
        '{"fields": [{"Given Name Text Box": "Henry"},{"Family Name Text Box": "Raspberry"}]}'

arabic_test:
	java -jar target/pdfparser-1.0-SNAPSHOT-jar-with-dependencies.jar \
		set_fields \
        testpdfs/sample_form-filled.pdf \
		arabic.pdf \
	    '{"fields": [{"Given Name Text Box": "HI البنك المتحد"},{"Family Name Text Box": "\u0627\u0644\u0628\u0646\u0643 \u0627\u0644\u0645\u062a\u062d\u062f"}]}'

combine_pdfs:
	java -jar target/pdfparser-1.0-SNAPSHOT-jar-with-dependencies.jar \
        concat_files \
        testpdfs/checkbox.pdf \
        testpdfs/dropdown.pdf \
        testpdfs/listbox.pdf \
        testpdfs/radio.pdf \
        testpdfs/signature.pdf \
        testpdfs/text.pdf \
        output.pdf
