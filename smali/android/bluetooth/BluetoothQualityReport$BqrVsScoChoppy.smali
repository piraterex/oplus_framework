.class public Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BqrVsScoChoppy"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothQualityReport.BqrVsScoChoppy"


# instance fields
.field private blacklist mAirFormat:I

.field private blacklist mGlitchCount:I

.field private blacklist mGoodRxFrameCount:I

.field private blacklist mInstanceCount:I

.field private blacklist mIntervalEsco:I

.field private blacklist mLateDispatch:I

.field private blacklist mLpaIntrMiss:I

.field private blacklist mMicIntrMiss:I

.field private blacklist mMissedInstanceCount:I

.field private blacklist mPlcDiscardCount:I

.field private blacklist mPlcFillCount:I

.field private blacklist mRxCxmDenials:I

.field private blacklist mRxRetransmitSlotCount:I

.field private blacklist mSprIntrMiss:I

.field private blacklist mTxAbortCount:I

.field private blacklist mTxCxmDenials:I

.field private blacklist mTxRetransmitSlotCount:I

.field private blacklist mWindowEsco:I

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothQualityReport;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1159
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    .line 1161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    .line 1170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    .line 1172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    .line 1176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    .line 1178
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V
    .locals 4
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "rawData"    # [B
    .param p3, "offset"    # I

    .line 1126
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 1131
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1133
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    .line 1136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    .line 1137
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    .line 1138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    .line 1139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    .line 1140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    .line 1141
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    .line 1142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    .line 1143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    .line 1144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    .line 1145
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    .line 1146
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    .line 1147
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    .line 1148
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    .line 1150
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    .line 1151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    .line 1152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    .line 1153
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    goto :goto_0

    .line 1154
    :catch_0
    move-exception v1

    .line 1155
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v2, "BluetoothQualityReport.BqrVsScoChoppy"

    const-string/jumbo v3, "some fields are not contained"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_0
    return-void

    .line 1128
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothQualityReport.BqrVsScoChoppy: BQR raw data length is abnormal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1337
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAirFormat()I
    .locals 1

    .line 1212
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    return v0
.end method

.method public blacklist getAirFormatStr()Ljava/lang/String;
    .locals 2

    .line 1220
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$AirMode;

    move-result-object v0

    .line 1221
    .local v0, "m":Landroid/bluetooth/BluetoothQualityReport$AirMode;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getGlitchCount()I
    .locals 1

    .line 1185
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    return v0
.end method

.method public blacklist getGoodRxFrameCount()I
    .locals 1

    .line 1333
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    return v0
.end method

.method public blacklist getInstanceCount()I
    .locals 1

    .line 1229
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    return v0
.end method

.method public blacklist getIntervalEsco()I
    .locals 1

    .line 1194
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    return v0
.end method

.method public blacklist getLateDispatch()I
    .locals 1

    .line 1261
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    return v0
.end method

.method public blacklist getLpaIntrMiss()I
    .locals 1

    .line 1277
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    return v0
.end method

.method public blacklist getMicIntrMiss()I
    .locals 1

    .line 1269
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    return v0
.end method

.method public blacklist getMissedInstanceCount()I
    .locals 1

    .line 1309
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    return v0
.end method

.method public blacklist getPlcDiscardCount()I
    .locals 1

    .line 1301
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    return v0
.end method

.method public blacklist getPlcFillCount()I
    .locals 1

    .line 1293
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    return v0
.end method

.method public blacklist getRxCxmDenials()I
    .locals 1

    .line 1245
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    return v0
.end method

.method public blacklist getRxRetransmitSlotCount()I
    .locals 1

    .line 1325
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    return v0
.end method

.method public blacklist getSprIntrMiss()I
    .locals 1

    .line 1285
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    return v0
.end method

.method public blacklist getTxAbortCount()I
    .locals 1

    .line 1253
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    return v0
.end method

.method public blacklist getTxCxmDenials()I
    .locals 1

    .line 1237
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    return v0
.end method

.method public blacklist getTxRetransmitSlotCount()I
    .locals 1

    .line 1317
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    return v0
.end method

.method public blacklist getWindowEsco()I
    .locals 1

    .line 1203
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsScoChoppy: {\n    mGlitchCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntervalEsco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWindowEsco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAirFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1369
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getAirFormatStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    .line 1370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mInstanceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxAbortCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mLateDispatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMicIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLpaIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSprIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlcFillCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlcDiscardCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMissedInstanceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxRetransmitSlotCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mRxRetransmitSlotCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGoodRxFrameCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1342
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1346
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    return-void
.end method
