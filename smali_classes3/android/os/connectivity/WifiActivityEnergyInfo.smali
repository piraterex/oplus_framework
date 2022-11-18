.class public final Landroid/os/connectivity/WifiActivityEnergyInfo;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/connectivity/WifiActivityEnergyInfo$StackState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/WifiActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STACK_STATE_INVALID:I = 0x0

.field public static final whitelist STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final whitelist STACK_STATE_STATE_IDLE:I = 0x3

.field public static final whitelist STACK_STATE_STATE_SCANNING:I = 0x2


# instance fields
.field private final blacklist mControllerEnergyUsedMicroJoules:J

.field private final blacklist mControllerIdleDurationMillis:J

.field private final blacklist mControllerRxDurationMillis:J

.field private final blacklist mControllerScanDurationMillis:J

.field private final blacklist mControllerTxDurationMillis:J

.field private final blacklist mStackState:I

.field private final blacklist mTimeSinceBootMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Landroid/os/connectivity/WifiActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JIJJJJ)V
    .locals 16
    .param p1, "timeSinceBootMillis"    # J
    .param p3, "stackState"    # I
    .param p4, "txDurationMillis"    # J
    .param p6, "rxDurationMillis"    # J
    .param p8, "scanDurationMillis"    # J
    .param p10, "idleDurationMillis"    # J

    .line 96
    nop

    .line 102
    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    move-wide/from16 v4, p10

    invoke-static/range {v0 .. v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->calculateEnergyMicroJoules(JJJ)J

    move-result-wide v14

    .line 96
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-direct/range {v2 .. v15}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    .line 103
    return-void
.end method

.method public constructor blacklist <init>(JIJJJJJ)V
    .locals 0
    .param p1, "timeSinceBootMillis"    # J
    .param p3, "stackState"    # I
    .param p4, "txDurationMillis"    # J
    .param p6, "rxDurationMillis"    # J
    .param p8, "scanDurationMillis"    # J
    .param p10, "idleDurationMillis"    # J
    .param p12, "energyUsedMicroJoules"    # J

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide p1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    .line 138
    iput p3, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    .line 139
    iput-wide p4, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    .line 140
    iput-wide p6, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    .line 141
    iput-wide p8, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    .line 142
    iput-wide p10, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    .line 143
    iput-wide p12, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    .line 144
    return-void
.end method

.method private static blacklist calculateEnergyMicroJoules(JJJ)J
    .locals 20
    .param p0, "txDurationMillis"    # J
    .param p2, "rxDurationMillis"    # J
    .param p4, "idleDurationMillis"    # J

    .line 107
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 109
    const-wide/16 v1, 0x0

    return-wide v1

    .line 112
    :cond_0
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, "powerProfile":Lcom/android/internal/os/PowerProfile;
    const-string/jumbo v2, "wifi.controller.idle"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 115
    .local v2, "idleCurrent":D
    const-string/jumbo v4, "wifi.controller.rx"

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 117
    .local v4, "rxCurrent":D
    const-string/jumbo v6, "wifi.controller.tx"

    invoke-virtual {v1, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 119
    .local v6, "txCurrent":D
    const-string/jumbo v8, "wifi.controller.voltage"

    invoke-virtual {v1, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 122
    .local v8, "voltage":D
    move-wide/from16 v10, p0

    long-to-double v12, v10

    mul-double/2addr v12, v6

    move-wide/from16 v14, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .local v16, "context":Landroid/content/Context;
    .local v17, "powerProfile":Lcom/android/internal/os/PowerProfile;
    long-to-double v0, v14

    mul-double/2addr v0, v4

    add-double/2addr v12, v0

    move-wide/from16 v0, p4

    move-wide/from16 v18, v4

    .end local v4    # "rxCurrent":D
    .local v18, "rxCurrent":D
    long-to-double v4, v0

    mul-double/2addr v4, v2

    add-double/2addr v12, v4

    mul-double/2addr v12, v8

    double-to-long v4, v12

    return-wide v4
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getControllerEnergyUsedMicroJoules()J
    .locals 2

    .line 234
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    return-wide v0
.end method

.method public whitelist getControllerIdleDurationMillis()J
    .locals 2

    .line 228
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerRxDurationMillis()J
    .locals 2

    .line 216
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerScanDurationMillis()J
    .locals 2

    .line 222
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerTxDurationMillis()J
    .locals 2

    .line 210
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    return-wide v0
.end method

.method public whitelist getStackState()I
    .locals 1

    .line 204
    iget v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    return v0
.end method

.method public whitelist getTimeSinceBootMillis()J
    .locals 2

    .line 194
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    return-wide v0
.end method

.method public blacklist isValid()Z
    .locals 4

    .line 242
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiActivityEnergyInfo{ mTimeSinceBootMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerTxDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerRxDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerScanDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerIdleDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerEnergyUsedMicroJoules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    return-void
.end method
