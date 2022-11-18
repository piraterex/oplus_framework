.class public final Landroid/bluetooth/BluetoothQualityReport;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;,
        Landroid/bluetooth/BluetoothQualityReport$BqrCommon;,
        Landroid/bluetooth/BluetoothQualityReport$AirMode;,
        Landroid/bluetooth/BluetoothQualityReport$LinkQuality;,
        Landroid/bluetooth/BluetoothQualityReport$ConnState;,
        Landroid/bluetooth/BluetoothQualityReport$PacketType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist QUALITY_REPORT_ID_A2DP_CHOPPY:I = 0x3

.field public static final blacklist QUALITY_REPORT_ID_APPROACH_LSTO:I = 0x2

.field public static final blacklist QUALITY_REPORT_ID_CONN_FAIL:I = 0x20

.field public static final blacklist QUALITY_REPORT_ID_MONITOR:I = 0x1

.field public static final blacklist QUALITY_REPORT_ID_SCO_CHOPPY:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothQualityReport"


# instance fields
.field private blacklist mAddr:Ljava/lang/String;

.field private blacklist mBluetoothClass:I

.field private blacklist mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

.field private blacklist mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

.field private blacklist mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

.field private blacklist mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

.field private blacklist mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

.field private blacklist mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

.field private blacklist mLmpSubVer:I

.field private blacklist mLmpVer:I

.field private blacklist mManufacturerId:I

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 360
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrCommon-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    .line 215
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    invoke-direct {v0, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    .line 216
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    .line 217
    .local v0, "id":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 218
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    goto :goto_0

    .line 219
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 220
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    goto :goto_0

    .line 221
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 222
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    goto :goto_0

    .line 223
    :cond_2
    const/16 v2, 0x20

    if-ne v0, v2, :cond_3

    .line 224
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    .line 226
    :cond_3
    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIILjava/lang/String;I[B)V
    .locals 5
    .param p1, "remoteAddr"    # Ljava/lang/String;
    .param p2, "lmpVer"    # I
    .param p3, "lmpSubVer"    # I
    .param p4, "manufacturerId"    # I
    .param p5, "remoteName"    # Ljava/lang/String;
    .param p6, "remoteCoD"    # I
    .param p7, "rawData"    # [B

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BluetoothQualityReport"

    if-nez v0, :cond_0

    .line 168
    const-string/jumbo v0, "remote addr is invalid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    .line 174
    :goto_0
    iput p2, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    .line 175
    iput p3, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    .line 176
    iput p4, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    .line 177
    if-nez p5, :cond_1

    .line 178
    const-string/jumbo v0, "remote name is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    goto :goto_1

    .line 181
    :cond_1
    iput-object p5, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    .line 183
    :goto_1
    iput p6, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    .line 185
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p7, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrCommon-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    .line 187
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    const/16 v1, 0x30

    invoke-direct {v0, p0, p7, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsCommon-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    .line 188
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    .line 189
    .local v0, "id":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 190
    return-void

    .line 192
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->getLength()I

    move-result v3

    add-int/2addr v3, v1

    .line 193
    .local v3, "vsPartOffset":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 194
    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-direct {v1, p0, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsLsto-IA;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    goto :goto_2

    .line 195
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 196
    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-direct {v1, p0, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy-IA;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    goto :goto_2

    .line 197
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 198
    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-direct {v1, p0, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy-IA;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    goto :goto_2

    .line 199
    :cond_5
    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 200
    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    invoke-direct {v1, p0, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail-IA;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    .line 204
    :goto_2
    return-void

    .line 202
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothQualityReport: unkown quality report id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAddress()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBluetoothClass()I
    .locals 1

    .line 305
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    return v0
.end method

.method public blacklist getBqrCommon()Landroid/bluetooth/BluetoothQualityReport$BqrCommon;
    .locals 1

    .line 313
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    return-object v0
.end method

.method public blacklist getBqrVsA2dpChoppy()Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;
    .locals 1

    .line 339
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    return-object v0
.end method

.method public blacklist getBqrVsCommon()Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;
    .locals 1

    .line 321
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    return-object v0
.end method

.method public blacklist getBqrVsConnectFail()Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;
    .locals 1

    .line 357
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    return-object v0
.end method

.method public blacklist getBqrVsLsto()Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;
    .locals 1

    .line 330
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    return-object v0
.end method

.method public blacklist getBqrVsScoChoppy()Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;
    .locals 1

    .line 348
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    return-object v0
.end method

.method public blacklist getLmpSubVersion()I
    .locals 1

    .line 281
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    return v0
.end method

.method public blacklist getLmpVersion()I
    .locals 1

    .line 273
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    return v0
.end method

.method public blacklist getManufacturerId()I
    .locals 1

    .line 289
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getQualityReportId()I
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    return v0
.end method

.method public blacklist getQualityReportIdStr()Ljava/lang/String;
    .locals 2

    .line 243
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    .line 244
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 256
    const-string v1, "INVALID"

    return-object v1

    .line 254
    :sswitch_0
    const-string v1, "Connect fail"

    return-object v1

    .line 252
    :sswitch_1
    const-string v1, "SCO choppy"

    return-object v1

    .line 250
    :sswitch_2
    const-string v1, "A2DP choppy"

    return-object v1

    .line 248
    :sswitch_3
    const-string v1, "Approaching LSTO"

    return-object v1

    .line 246
    :sswitch_4
    const-string v1, "Quality monitor"

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BQR: {\n  mAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLmpVer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    .line 402
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0x%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLmpSubVer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "0x%04X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mManufacturerId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget v5, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    .line 404
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mBluetoothClass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    .line 406
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "0x%X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v2

    .line 412
    .local v2, "id":I
    const-string v3, "\n}"

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_1
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_2
    const/16 v4, 0x20

    if-ne v2, v4, :cond_3

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_3
    if-ne v2, v1, :cond_4

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_4
    :goto_0
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 377
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 378
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    .line 386
    .local v0, "id":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 388
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 389
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 390
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 391
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 392
    :cond_2
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 393
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 395
    :cond_3
    :goto_0
    return-void
.end method
