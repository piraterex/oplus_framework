.class public Landroid/telecom/ParcelableCallAnalytics;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$EventTiming;,
        Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;,
        Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
    }
.end annotation


# static fields
.field public static final whitelist CALLTYPE_INCOMING:I = 0x1

.field public static final whitelist CALLTYPE_OUTGOING:I = 0x2

.field public static final whitelist CALLTYPE_UNKNOWN:I = 0x0

.field public static final whitelist CDMA_PHONE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GSM_PHONE:I = 0x2

.field public static final whitelist IMS_PHONE:I = 0x4

.field public static final whitelist MILLIS_IN_1_SECOND:J = 0x3e8L

.field public static final whitelist MILLIS_IN_5_MINUTES:J = 0x493e0L

.field public static final whitelist SIP_PHONE:I = 0x8

.field public static final whitelist STILL_CONNECTED:I = -0x1

.field public static final whitelist THIRD_PARTY_PHONE:I = 0x10


# instance fields
.field private final greylist-max-o analyticsEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o callDurationMillis:J

.field private blacklist callSource:I

.field private final greylist-max-o callTechnologies:I

.field private final greylist-max-o callTerminationCode:I

.field private final greylist-max-o callType:I

.field private final greylist-max-o connectionService:Ljava/lang/String;

.field private final greylist-max-o eventTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o isAdditionalCall:Z

.field private final greylist-max-o isCreatedFromExistingConnection:Z

.field private final greylist-max-o isEmergencyCall:Z

.field private final greylist-max-o isInterrupted:Z

.field private greylist-max-o isVideoCall:Z

.field private final greylist-max-o startTimeMillis:J

.field private greylist-max-o videoEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 266
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JJIZZIIZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "startTimeMillis"    # J
    .param p3, "callDurationMillis"    # J
    .param p5, "callType"    # I
    .param p6, "isAdditionalCall"    # Z
    .param p7, "isInterrupted"    # Z
    .param p8, "callTechnologies"    # I
    .param p9, "callTerminationCode"    # I
    .param p10, "isEmergencyCall"    # Z
    .param p11, "connectionService"    # Ljava/lang/String;
    .param p12, "isCreatedFromExistingConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIZZIIZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p13, "analyticsEvents":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;>;"
    .local p14, "eventTimings":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$EventTiming;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 325
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 332
    iput-wide p1, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 333
    iput-wide p3, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 334
    iput p5, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 335
    iput-boolean p6, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 336
    iput-boolean p7, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 337
    iput p8, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 338
    iput p9, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 339
    iput-boolean p10, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 340
    iput-object p11, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 341
    iput-boolean p12, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 342
    iput-object p13, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 343
    iput-object p14, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 344
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 325
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 350
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 351
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 354
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 356
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 358
    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 360
    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 361
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 362
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 363
    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 365
    return-void
.end method

.method private static greylist-max-o readByteAsBoolean(Landroid/os/Parcel;)Z
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 473
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static greylist-max-o writeBooleanAsByte(Landroid/os/Parcel;Z)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "b"    # Z

    .line 469
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 470
    return-void
.end method


# virtual methods
.method public whitelist analyticsEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallDurationMillis()J
    .locals 2

    .line 405
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    return-wide v0
.end method

.method public blacklist getCallSource()I
    .locals 1

    .line 460
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    return v0
.end method

.method public whitelist getCallTechnologies()I
    .locals 1

    .line 421
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    return v0
.end method

.method public whitelist getCallTerminationCode()I
    .locals 1

    .line 425
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    return v0
.end method

.method public whitelist getCallType()I
    .locals 1

    .line 409
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    return v0
.end method

.method public whitelist getConnectionService()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEventTimings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStartTimeMillis()J
    .locals 2

    .line 401
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getVideoEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isAdditionalCall()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    return v0
.end method

.method public whitelist isCreatedFromExistingConnection()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    return v0
.end method

.method public whitelist isEmergencyCall()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    return v0
.end method

.method public whitelist isInterrupted()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    return v0
.end method

.method public greylist-max-o isVideoCall()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    return v0
.end method

.method public blacklist setCallSource(I)V
    .locals 0
    .param p1, "callSource"    # I

    .line 397
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 398
    return-void
.end method

.method public greylist-max-o setIsVideoCall(Z)V
    .locals 0
    .param p1, "isVideoCall"    # Z

    .line 387
    iput-boolean p1, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 388
    return-void
.end method

.method public greylist-max-o setVideoEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p1, "videoEvents":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$VideoEvent;>;"
    iput-object p1, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 393
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 368
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 369
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 370
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 372
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 373
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 376
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 378
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 379
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 380
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 381
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 382
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    return-void
.end method
