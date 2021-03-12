#!/bin/bash
cd `dirname $0`
cd ..
python /server/predict_Lottery_ticket/get_train_data.py &
python /server/predict_Lottery_ticket/train_model.py &
nohup python /server/predict_Lottery_ticket/run_api.py &
echo "Server started."

