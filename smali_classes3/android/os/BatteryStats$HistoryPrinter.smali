.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field greylist-max-o lastTime:J

.field greylist-max-o oldChargeMAh:I

.field greylist-max-o oldHealth:I

.field greylist-max-o oldLevel:I

.field blacklist oldModemRailChargeMah:D

.field greylist-max-o oldPlug:I

.field greylist-max-o oldState:I

.field greylist-max-o oldState2:I

.field greylist-max-o oldStatus:I

.field greylist-max-o oldTemp:I

.field greylist-max-o oldVolt:I

.field blacklist oldWifiRailChargeMah:D


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 2

    .line 6744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6745
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 6746
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 6747
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 6748
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 6749
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 6750
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 6751
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 6752
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 6753
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 6754
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 6755
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 6756
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private greylist-max-o printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .locals 18
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p2, "baseTime"    # J
    .param p4, "checkin"    # Z
    .param p5, "verbose"    # Z

    .line 6787
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6788
    .local v2, "item":Ljava/lang/StringBuilder;
    const-string v9, " ("

    const/16 v10, 0x9

    const-string/jumbo v11, "h"

    const/16 v12, 0x2c

    if-nez p4, :cond_0

    .line 6789
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6790
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    const/16 v5, 0x13

    invoke-static {v3, v4, v2, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 6792
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6793
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6794
    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6796
    :cond_0
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6797
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6798
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 6799
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6801
    :cond_1
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6803
    :goto_0
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 6805
    :goto_1
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x4

    const-string v13, ":"

    if-ne v3, v4, :cond_3

    .line 6806
    if-eqz p4, :cond_2

    .line 6807
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6809
    :cond_2
    const-string v3, "START\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6810
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_28

    .line 6811
    :cond_3
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    const/4 v5, 0x7

    const-string v14, " "

    const-string v15, "\n"

    if-eq v3, v4, :cond_48

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_4

    move-object v3, v13

    goto/16 :goto_27

    .line 6830
    :cond_4
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 6831
    if-eqz p4, :cond_5

    .line 6832
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6834
    :cond_5
    const-string v3, "SHUTDOWN\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_28

    .line 6835
    :cond_6
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    .line 6836
    if-eqz p4, :cond_7

    .line 6837
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6839
    :cond_7
    const-string v3, "*OVERFLOW*\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_28

    .line 6841
    :cond_8
    if-nez p4, :cond_13

    .line 6842
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const-string v4, "0"

    const-string v5, "00"

    const/16 v6, 0xa

    if-ge v3, v6, :cond_9

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6843
    :cond_9
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v6, 0x64

    if-ge v3, v6, :cond_a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6844
    :cond_a
    :goto_2
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6845
    if-eqz p5, :cond_14

    .line 6846
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6847
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v3, :cond_b

    goto :goto_3

    .line 6848
    :cond_b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x10

    if-ge v3, v6, :cond_c

    const-string v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6849
    :cond_c
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x100

    if-ge v3, v6, :cond_d

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6850
    :cond_d
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x1000

    if-ge v3, v6, :cond_e

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6851
    :cond_e
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_f

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6852
    :cond_f
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    if-ge v3, v6, :cond_10

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6853
    :cond_10
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x1000000

    if-ge v3, v6, :cond_11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6854
    :cond_11
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x10000000

    if-ge v3, v5, :cond_12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6855
    :cond_12
    :goto_3
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 6858
    :cond_13
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v3, v4, :cond_14

    .line 6859
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 6860
    const-string v3, ",Bl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6863
    :cond_14
    :goto_4
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const-string v5, "f"

    const-string/jumbo v6, "n"

    const-string v7, "d"

    const-string v8, "c"

    const-string v16, "?"

    const-string/jumbo v17, "unknown"

    if-eq v3, v4, :cond_1b

    .line 6864
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 6865
    if-eqz p4, :cond_15

    const-string v3, ",Bs="

    goto :goto_5

    :cond_15
    const-string v3, " status="

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6866
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v3, :pswitch_data_0

    .line 6883
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 6880
    :pswitch_0
    if-eqz p4, :cond_16

    move-object v3, v5

    goto :goto_6

    :cond_16
    const-string v3, "full"

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6881
    goto :goto_b

    .line 6877
    :pswitch_1
    if-eqz p4, :cond_17

    move-object v3, v6

    goto :goto_7

    :cond_17
    const-string/jumbo v3, "not-charging"

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6878
    goto :goto_b

    .line 6874
    :pswitch_2
    if-eqz p4, :cond_18

    move-object v3, v7

    goto :goto_8

    :cond_18
    const-string v3, "discharging"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6875
    goto :goto_b

    .line 6871
    :pswitch_3
    if-eqz p4, :cond_19

    move-object v3, v8

    goto :goto_9

    :cond_19
    const-string v3, "charging"

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6872
    goto :goto_b

    .line 6868
    :pswitch_4
    if-eqz p4, :cond_1a

    move-object/from16 v3, v16

    goto :goto_a

    :cond_1a
    move-object/from16 v3, v17

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6887
    :cond_1b
    :goto_b
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v3, v4, :cond_24

    .line 6888
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 6889
    if-eqz p4, :cond_1c

    const-string v3, ",Bh="

    goto :goto_c

    :cond_1c
    const-string v3, " health="

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6890
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v3, :pswitch_data_1

    .line 6913
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 6910
    :pswitch_5
    if-eqz p4, :cond_1d

    goto :goto_d

    :cond_1d
    const-string v8, "cold"

    :goto_d
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6911
    goto :goto_14

    .line 6907
    :pswitch_6
    if-eqz p4, :cond_1e

    goto :goto_e

    :cond_1e
    const-string v5, "failure"

    :goto_e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6908
    goto :goto_14

    .line 6904
    :pswitch_7
    if-eqz p4, :cond_1f

    const-string/jumbo v3, "v"

    goto :goto_f

    :cond_1f
    const-string/jumbo v3, "over-voltage"

    :goto_f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6905
    goto :goto_14

    .line 6901
    :pswitch_8
    if-eqz p4, :cond_20

    goto :goto_10

    :cond_20
    const-string v7, "dead"

    :goto_10
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6902
    goto :goto_14

    .line 6898
    :pswitch_9
    if-eqz p4, :cond_21

    move-object v3, v11

    goto :goto_11

    :cond_21
    const-string/jumbo v3, "overheat"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6899
    goto :goto_14

    .line 6895
    :pswitch_a
    if-eqz p4, :cond_22

    const-string v3, "g"

    goto :goto_12

    :cond_22
    const-string/jumbo v3, "good"

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6896
    goto :goto_14

    .line 6892
    :pswitch_b
    if-eqz p4, :cond_23

    move-object/from16 v3, v16

    goto :goto_13

    :cond_23
    move-object/from16 v3, v17

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6917
    :cond_24
    :goto_14
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v3, v4, :cond_2a

    .line 6918
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 6919
    if-eqz p4, :cond_25

    const-string v3, ",Bp="

    goto :goto_15

    :cond_25
    const-string v3, " plug="

    :goto_15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6920
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v3, :pswitch_data_2

    .line 6934
    :pswitch_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 6931
    :pswitch_d
    if-eqz p4, :cond_26

    const-string/jumbo v3, "w"

    goto :goto_16

    :cond_26
    const-string/jumbo v3, "wireless"

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6932
    goto :goto_1a

    .line 6928
    :pswitch_e
    if-eqz p4, :cond_27

    const-string/jumbo v3, "u"

    goto :goto_17

    :cond_27
    const-string/jumbo v3, "usb"

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6929
    goto :goto_1a

    .line 6925
    :pswitch_f
    if-eqz p4, :cond_28

    const-string v3, "a"

    goto :goto_18

    :cond_28
    const-string v3, "ac"

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6926
    goto :goto_1a

    .line 6922
    :pswitch_10
    if-eqz p4, :cond_29

    goto :goto_19

    :cond_29
    const-string/jumbo v6, "none"

    :goto_19
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6938
    :cond_2a
    :goto_1a
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v3, v4, :cond_2c

    .line 6939
    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 6940
    if-eqz p4, :cond_2b

    const-string v3, ",Bt="

    goto :goto_1b

    :cond_2b
    const-string v3, " temp="

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6941
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6943
    :cond_2c
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v3, v4, :cond_2e

    .line 6944
    iget-char v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 6945
    if-eqz p4, :cond_2d

    const-string v3, ",Bv="

    goto :goto_1c

    :cond_2d
    const-string v3, " volt="

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6946
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6948
    :cond_2e
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    div-int/lit16 v8, v3, 0x3e8

    .line 6949
    .local v8, "chargeMAh":I
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v3, v8, :cond_30

    .line 6950
    iput v8, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 6951
    if-eqz p4, :cond_2f

    const-string v3, ",Bcc="

    goto :goto_1d

    :cond_2f
    const-string v3, " charge="

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6952
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6954
    :cond_30
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v3, v3, v5

    const-string v4, "#.##"

    if-eqz v3, :cond_32

    .line 6955
    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 6956
    if-eqz p4, :cond_31

    const-string v3, ",Mrc="

    goto :goto_1e

    :cond_31
    const-string v3, " modemRailChargemAh="

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6957
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6959
    :cond_32
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    move-object/from16 v17, v13

    iget-wide v12, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v3, v5, v12

    if-eqz v3, :cond_34

    .line 6960
    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 6961
    if-eqz p4, :cond_33

    const-string v3, ",Wrc="

    goto :goto_1f

    :cond_33
    const-string v3, " wifiRailChargemAh="

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6962
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6964
    :cond_34
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v12, p4, 0x1

    move-object v3, v2

    move v13, v8

    .end local v8    # "chargeMAh":I
    .local v13, "chargeMAh":I
    move v8, v12

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 6966
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v6, 0x0

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v8, p4, 0x1

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 6968
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const-string v4, "\""

    const-string v5, ":\""

    if-eqz v3, :cond_36

    .line 6969
    if-eqz p4, :cond_35

    .line 6970
    const-string v3, ",wr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6971
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 6973
    :cond_35
    const-string v3, " wake_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6974
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6975
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6976
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6977
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6980
    :cond_36
    :goto_20
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_3e

    .line 6981
    if-eqz p4, :cond_37

    const-string v14, ","

    :cond_37
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6982
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v6, 0x8000

    and-int/2addr v3, v6

    if-eqz v3, :cond_38

    .line 6983
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 6984
    :cond_38
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_39

    .line 6985
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6987
    :cond_39
    :goto_21
    if-eqz p4, :cond_3a

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_22

    .line 6988
    :cond_3a
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    :goto_22
    nop

    .line 6989
    .local v3, "eventNames":[Ljava/lang/String;
    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v7, -0xc001

    and-int/2addr v6, v7

    .line 6991
    .local v6, "idx":I
    if-ltz v6, :cond_3b

    array-length v7, v3

    if-ge v6, v7, :cond_3b

    .line 6992
    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 6994
    :cond_3b
    if-eqz p4, :cond_3c

    const-string v7, "Ev"

    goto :goto_23

    :cond_3c
    const-string v7, "event"

    :goto_23
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6995
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6997
    :goto_24
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6998
    if-eqz p4, :cond_3d

    .line 6999
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v4, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 7001
    :cond_3d
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v7, v7, v6

    iget-object v8, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v8, v8, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7002
    invoke-interface {v7, v8}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v7

    .line 7001
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7003
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7004
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7005
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7008
    .end local v3    # "eventNames":[Ljava/lang/String;
    .end local v6    # "idx":I
    :cond_3e
    :goto_25
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7009
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_47

    .line 7010
    if-nez p4, :cond_43

    .line 7011
    const-string v3, "                 Details: cpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7012
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7013
    const-string/jumbo v3, "u+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7014
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7015
    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7016
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_41

    .line 7017
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7018
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7020
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    const-string v4, ", "

    if-ltz v3, :cond_3f

    .line 7021
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7022
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v6, v6, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v5, v6}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7025
    :cond_3f
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_40

    .line 7026
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7027
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7030
    :cond_40
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7032
    :cond_41
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7033
    const-string v3, "                          /proc/stat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7034
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7035
    const-string v3, " usr, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7036
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7037
    const-string v3, " sys, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7038
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7039
    const-string v3, " io, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7040
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7041
    const-string v3, " irq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7042
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7043
    const-string v3, " sirq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7044
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7045
    const-string v3, " idle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7046
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr v3, v4

    .line 7049
    .local v3, "totalRun":I
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v4, v3

    .line 7050
    .local v4, "total":I
    if-lez v4, :cond_42

    .line 7051
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7052
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    .line 7053
    .local v5, "perc":F
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "%.1f%%"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7054
    const-string v6, " of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7055
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7056
    .local v6, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v7, v4, 0xa

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 7057
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7058
    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7061
    .end local v5    # "perc":F
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_42
    const-string v5, ", SubsystemPowerState "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7062
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7063
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7064
    .end local v3    # "totalRun":I
    .end local v4    # "total":I
    goto/16 :goto_26

    .line 7065
    :cond_43
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7066
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",0,Dcpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7067
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7068
    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7069
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7070
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_45

    .line 7071
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7073
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_44

    .line 7074
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7077
    :cond_44
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_45

    .line 7078
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7082
    :cond_45
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7083
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7084
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",0,Dpst="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7085
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7086
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7087
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7088
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7089
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7090
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7091
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7093
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7094
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7095
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7096
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7098
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v3, :cond_46

    .line 7099
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7101
    :cond_46
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7104
    :cond_47
    :goto_26
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 7105
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 7107
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4c

    .line 7108
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_28

    .line 6811
    .end local v13    # "chargeMAh":I
    :cond_48
    move-object v3, v13

    .line 6813
    :goto_27
    if-eqz p4, :cond_49

    .line 6814
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6816
    :cond_49
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_4a

    .line 6817
    const-string v3, "RESET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6818
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 6820
    :cond_4a
    const-string v3, "TIME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6821
    if-eqz p4, :cond_4b

    .line 6822
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6823
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 6825
    :cond_4b
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6826
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    .line 6827
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6828
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7112
    :cond_4c
    :goto_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private greylist-max-o printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .line 7126
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7128
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7129
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7131
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7132
    return-void
.end method

.method private greylist-max-o printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .line 7116
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 7117
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7118
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7119
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7120
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7121
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7122
    return-void
.end method


# virtual methods
.method public greylist-max-o printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "verbose"    # Z

    .line 6779
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    .line 6780
    .local v0, "item":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 6781
    .local v4, "line":Ljava/lang/String;
    const-wide v5, 0x20900000006L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 6780
    .end local v4    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6783
    :cond_0
    return-void
.end method

.method public greylist-max-o printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "checkin"    # Z
    .param p6, "verbose"    # Z

    .line 6773
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6774
    return-void
.end method

.method greylist-max-o reset()V
    .locals 2

    .line 6759
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 6760
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 6761
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 6762
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 6763
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 6764
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 6765
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 6766
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 6767
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 6768
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 6769
    return-void
.end method
