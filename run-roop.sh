#!/bin/bash

main () {
        echo Welcome to Roop. Please follow the prompts to perform your face swapp
        sleep 1
        echo Enter source file
        read source_file
        echo Enter target file
        read target_file
        echo Keep FPS? [y/n]
        read keep_fps
        if [ "$keep_fps" =  "y" ];
        then
                fps=1
        elif [ "$keep_fps" =  "n" ];
        then
                fps=0
        else
		echo only acceps y or n 
                main
        fi
        echo Many faces? [y/n]
        read many_faces
        if [ "$many_faces" = "y" ];
        then
                faces=1
        elif [ "$many_faces" = "n" ];
        then
                faces=0
        else
		echo only acceps y or n 
                main
        fi

        #fps flag
        if [ "$fps" = 1 ];
        then
                fps_flag="--keep-fps"
        else
                fps_flag=""
        fi

        # faces flag
        if [ "$faces" = 1 ];
        then
                faces_flag="--many-faces"
        else
                faces_flag=""
        fi
	
	echo python3 /home/ubuntu/roop/run.py --execution-provider cuda --source /home/ubuntu/source/$source_file --target /home/ubuntu/source/$target_file -o /home/ubuntu/outputs/ $fps_flag $faces_flag --execution-threads 4
        python3 /home/ubuntu/roop/run.py --execution-provider cuda --source /home/ubuntu/source/$source_file --target /home/ubuntu/source/$target_file -o /home/ubuntu/outputs/ $fps_flag $faces_flag --execution-threads 4
}
main


