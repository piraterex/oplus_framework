.class public Landroid/app/job/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobParameters$StopReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTERNAL_STOP_REASON_CANCELED:I = 0x0

.field public static final blacklist INTERNAL_STOP_REASON_CONSTRAINTS_NOT_SATISFIED:I = 0x1

.field public static final blacklist INTERNAL_STOP_REASON_DATA_CLEARED:I = 0x8

.field public static final blacklist INTERNAL_STOP_REASON_DEVICE_IDLE:I = 0x4

.field public static final blacklist INTERNAL_STOP_REASON_DEVICE_THERMAL:I = 0x5

.field public static final blacklist INTERNAL_STOP_REASON_PREEMPT:I = 0x2

.field public static final blacklist INTERNAL_STOP_REASON_RESTRICTED_BUCKET:I = 0x6

.field public static final blacklist INTERNAL_STOP_REASON_RTC_UPDATED:I = 0x9

.field public static final blacklist INTERNAL_STOP_REASON_SUCCESSFUL_FINISH:I = 0xa

.field public static final blacklist INTERNAL_STOP_REASON_TIMEOUT:I = 0x3

.field public static final blacklist INTERNAL_STOP_REASON_UNINSTALL:I = 0x7

.field public static final blacklist INTERNAL_STOP_REASON_UNKNOWN:I = -0x1

.field public static final blacklist JOB_STOP_REASON_CODES:[I

.field public static final whitelist STOP_REASON_APP_STANDBY:I = 0xc

.field public static final whitelist STOP_REASON_BACKGROUND_RESTRICTION:I = 0xb

.field public static final whitelist STOP_REASON_CANCELLED_BY_APP:I = 0x1

.field public static final whitelist STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW:I = 0x5

.field public static final whitelist STOP_REASON_CONSTRAINT_CHARGING:I = 0x6

.field public static final whitelist STOP_REASON_CONSTRAINT_CONNECTIVITY:I = 0x7

.field public static final whitelist STOP_REASON_CONSTRAINT_DEVICE_IDLE:I = 0x8

.field public static final whitelist STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW:I = 0x9

.field public static final whitelist STOP_REASON_DEVICE_STATE:I = 0x4

.field public static final whitelist STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED:I = 0xf

.field public static final whitelist STOP_REASON_PREEMPT:I = 0x2

.field public static final whitelist STOP_REASON_QUOTA:I = 0xa

.field public static final whitelist STOP_REASON_SYSTEM_PROCESSING:I = 0xe

.field public static final whitelist STOP_REASON_TIMEOUT:I = 0x3

.field public static final whitelist STOP_REASON_UNDEFINED:I = 0x0

.field public static final whitelist STOP_REASON_USER:I = 0xd


# instance fields
.field private final greylist callback:Landroid/os/IBinder;

.field private final greylist-max-o clipData:Landroid/content/ClipData;

.field private final greylist-max-o clipGrantFlags:I

.field private greylist-max-o debugStopReason:Ljava/lang/String;

.field private final greylist-max-o extras:Landroid/os/PersistableBundle;

.field private final greylist jobId:I

.field private blacklist mInternalStopReason:I

.field private final blacklist mIsExpedited:Z

.field public blacklist mJobParametersExt:Landroid/app/job/IJobParametersExt;

.field private blacklist mStopReason:I

.field private final greylist-max-o mTriggeredContentAuthorities:[Ljava/lang/String;

.field private final greylist-max-o mTriggeredContentUris:[Landroid/net/Uri;

.field private final greylist-max-o network:Landroid/net/Network;

.field private final greylist-max-o overrideDeadlineExpired:Z

.field private final greylist-max-o transientExtras:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 114
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/job/JobParameters;->JOB_STOP_REASON_CODES:[I

    .line 591
    new-instance v0, Landroid/app/job/JobParameters$1;

    invoke-direct {v0}, Landroid/app/job/JobParameters$1;-><init>()V

    sput-object v0, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "jobId"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;
    .param p4, "transientExtras"    # Landroid/os/Bundle;
    .param p5, "clipData"    # Landroid/content/ClipData;
    .param p6, "clipGrantFlags"    # I
    .param p7, "overrideDeadlineExpired"    # Z
    .param p8, "isExpedited"    # Z
    .param p9, "triggeredContentUris"    # [Landroid/net/Uri;
    .param p10, "triggeredContentAuthorities"    # [Ljava/lang/String;
    .param p11, "network"    # Landroid/net/Network;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-class v0, Landroid/app/job/IJobParametersExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/IJobParametersExt;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mJobParametersExt:Landroid/app/job/IJobParametersExt;

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    .line 301
    iput p2, p0, Landroid/app/job/JobParameters;->jobId:I

    .line 302
    iput-object p3, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    .line 303
    iput-object p4, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    .line 304
    iput-object p5, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 305
    iput p6, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    .line 306
    iput-object p1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    .line 307
    iput-boolean p7, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    .line 308
    iput-boolean p8, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    .line 309
    iput-object p9, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    .line 310
    iput-object p10, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    .line 311
    iput-object p11, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    .line 312
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-class v0, Landroid/app/job/IJobParametersExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/IJobParametersExt;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mJobParametersExt:Landroid/app/job/IJobParametersExt;

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    .line 293
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParameters;->jobId:I

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 529
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    goto :goto_0

    .line 532
    :cond_0
    iput-object v2, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 533
    iput v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    .line 535
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v0, v3

    :cond_1
    iput-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    .line 538
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    goto :goto_1

    .line 543
    :cond_2
    iput-object v2, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    .line 545
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    .line 548
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/job/JobParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getInternalReasonCodeDescription(I)Ljava/lang/String;
    .locals 2
    .param p0, "reasonCode"    # I

    .line 140
    packed-switch p0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_0
    const-string/jumbo v0, "successful_finish"

    return-object v0

    .line 150
    :pswitch_1
    const-string/jumbo v0, "rtc_updated"

    return-object v0

    .line 149
    :pswitch_2
    const-string v0, "data_cleared"

    return-object v0

    .line 148
    :pswitch_3
    const-string/jumbo v0, "uninstall"

    return-object v0

    .line 147
    :pswitch_4
    const-string/jumbo v0, "restricted_bucket"

    return-object v0

    .line 146
    :pswitch_5
    const-string/jumbo v0, "thermal"

    return-object v0

    .line 145
    :pswitch_6
    const-string v0, "device_idle"

    return-object v0

    .line 144
    :pswitch_7
    const-string/jumbo v0, "timeout"

    return-object v0

    .line 143
    :pswitch_8
    const-string/jumbo v0, "preempt"

    return-object v0

    .line 142
    :pswitch_9
    const-string v0, "constraints"

    return-object v0

    .line 141
    :pswitch_a
    const-string v0, "canceled"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getJobStopReasonCodes()[I
    .locals 1

    .line 159
    sget-object v0, Landroid/app/job/JobParameters;->JOB_STOP_REASON_CODES:[I

    return-object v0
.end method


# virtual methods
.method public whitelist completeWork(Landroid/app/job/JobWorkItem;)V
    .locals 3
    .param p1, "work"    # Landroid/app/job/JobWorkItem;

    .line 510
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/job/IJobCallback;->completeWork(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    nop

    .line 516
    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given work is not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/job/JobParameters;
    .end local p1    # "work":Landroid/app/job/JobWorkItem;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .restart local p0    # "this":Landroid/app/job/JobParameters;
    .restart local p1    # "work":Landroid/app/job/JobWorkItem;
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dequeueWork()Landroid/app/job/JobWorkItem;
    .locals 2

    .line 486
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobCallback;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getCallback()Landroid/app/job/IJobCallback;
    .locals 1

    .line 521
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getClipGrantFlags()I
    .locals 1

    .line 378
    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    return v0
.end method

.method public greylist-max-o getDebugStopReason()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 351
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public blacklist getInternalStopReasonCode()I
    .locals 1

    .line 333
    iget v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    return v0
.end method

.method public whitelist getJobId()I
    .locals 1

    .line 318
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    return v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist getStopReason()I
    .locals 1

    .line 328
    iget v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    return v0
.end method

.method public whitelist getTransientExtras()Landroid/os/Bundle;
    .locals 1

    .line 360
    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTriggeredContentAuthorities()[Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTriggeredContentUris()[Landroid/net/Uri;
    .locals 1

    .line 413
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isExpeditedJob()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    return v0
.end method

.method public whitelist isOverrideDeadlineExpired()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    return v0
.end method

.method public blacklist setStopReason(IILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "internalStopReason"    # I
    .param p3, "debugStopReason"    # Ljava/lang/String;

    .line 553
    iput p1, p0, Landroid/app/job/JobParameters;->mStopReason:I

    .line 554
    iput p2, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    .line 555
    iput-object p3, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 565
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 567
    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 568
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 571
    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    :goto_0
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 576
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 578
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 579
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    invoke-virtual {v0, p1, p2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 584
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    :goto_1
    iget v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    return-void
.end method
