#!/bin/bash

compression_type=$1
folder_to_compress=$2
destination_path=$3

current_date=$(date +'%d_%m_%y')

compressed_file_name="${folder_to_compress}_${current_date}"

case "$compression_type" in
    zip)
        compressed_file_name+=".zip"
        ;;
    tar)
        compressed_file_name+=".tar"
        ;;
    *)
        echo "Invalid compression type. Please provide 'zip' or 'tar' as the compression type."
        exit 1
        ;;
esac

case "$compression_type" in
    zip)
        zip -r "$destination_path/$compressed_file_name" "$folder_to_compress"
        ;;
    tar)
        tar -cf "$destination_path/$compressed_file_name" "$folder_to_compress"
        ;;
esac

compressed_file_size=$(du -h "$destination_path/$compressed_file_name" | awk '{print $1}')

original_folder_size=$(du -sh "$folder_to_compress" | awk '{print $1}')

echo "Compressed file size: $compressed_file_size"
echo "Original folder size: $original_folder_size"

