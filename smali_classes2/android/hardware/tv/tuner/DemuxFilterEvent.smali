.class public final Landroid/hardware/tv/tuner/DemuxFilterEvent;
.super Ljava/lang/Object;
.source "DemuxFilterEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxFilterEvent$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist download:I = 0x5

.field public static final blacklist ipPayload:I = 0x6

.field public static final blacklist media:I = 0x1

.field public static final blacklist mmtpRecord:I = 0x4

.field public static final blacklist monitorEvent:I = 0x8

.field public static final blacklist pes:I = 0x2

.field public static final blacklist section:I = 0x0

.field public static final blacklist startId:I = 0x9

.field public static final blacklist temi:I = 0x7

.field public static final blacklist tsRecord:I = 0x3


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    .line 25
    iput-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxFilterEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 345
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 348
    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 367
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    .line 368
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    .line 369
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 351
    packed-switch p1, :pswitch_data_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_0
    const-string v0, "startId"

    return-object v0

    .line 360
    :pswitch_1
    const-string v0, "monitorEvent"

    return-object v0

    .line 359
    :pswitch_2
    const-string v0, "temi"

    return-object v0

    .line 358
    :pswitch_3
    const-string v0, "ipPayload"

    return-object v0

    .line 357
    :pswitch_4
    const-string v0, "download"

    return-object v0

    .line 356
    :pswitch_5
    const-string v0, "mmtpRecord"

    return-object v0

    .line 355
    :pswitch_6
    const-string/jumbo v0, "tsRecord"

    return-object v0

    .line 354
    :pswitch_7
    const-string v0, "pes"

    return-object v0

    .line 353
    :pswitch_8
    const-string v0, "media"

    return-object v0

    .line 352
    :pswitch_9
    const-string v0, "section"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 337
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 338
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 339
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 341
    :cond_1
    return v0
.end method

.method public static blacklist download(Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    .line 119
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ipPayload(Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    .line 134
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist media(Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    .line 59
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mmtpRecord(Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    .line 104
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist monitorEvent(Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    .line 164
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist pes(Landroid/hardware/tv/tuner/DemuxFilterPesEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    .line 74
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist section(Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    .line 44
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist startId(I)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 3
    .param p0, "_value"    # I

    .line 179
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist temi(Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    .line 149
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tsRecord(Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    .line 89
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMonitorEvent()Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTemi()Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 329
    goto :goto_0

    .line 325
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getIpPayload()Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 326
    goto :goto_0

    .line 322
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 323
    goto :goto_0

    .line 319
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMmtpRecord()Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 320
    goto :goto_0

    .line 316
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTsRecord()Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 317
    goto :goto_0

    .line 313
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getPes()Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 314
    goto :goto_0

    .line 310
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMedia()Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 311
    goto :goto_0

    .line 307
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 308
    nop

    .line 334
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public blacklist getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;
    .locals 1

    .line 123
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 124
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    return-object v0
.end method

.method public blacklist getIpPayload()Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;
    .locals 1

    .line 138
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 139
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    return-object v0
.end method

.method public blacklist getMedia()Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    return-object v0
.end method

.method public blacklist getMmtpRecord()Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;
    .locals 1

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    return-object v0
.end method

.method public blacklist getMonitorEvent()Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;
    .locals 1

    .line 168
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 169
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    return-object v0
.end method

.method public blacklist getPes()Landroid/hardware/tv/tuner/DemuxFilterPesEvent;
    .locals 1

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    return-object v0
.end method

.method public blacklist getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    return-object v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStartId()I
    .locals 1

    .line 183
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 184
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 38
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    return v0
.end method

.method public blacklist getTemi()Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;
    .locals 1

    .line 153
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 154
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    return-object v0
.end method

.method public blacklist getTsRecord()Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;
    .locals 1

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 297
    return-void

    .line 290
    .end local v1    # "_aidl_value":I
    :pswitch_1
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    .line 291
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 292
    return-void

    .line 285
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;
    :pswitch_2
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    .line 286
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 287
    return-void

    .line 280
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;
    :pswitch_3
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    .line 281
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 282
    return-void

    .line 275
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;
    :pswitch_4
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    .line 276
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 277
    return-void

    .line 270
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;
    :pswitch_5
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    .line 271
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 272
    return-void

    .line 265
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;
    :pswitch_6
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    .line 266
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 267
    return-void

    .line 260
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;
    :pswitch_7
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterPesEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    .line 261
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterPesEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 262
    return-void

    .line 255
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterPesEvent;
    :pswitch_8
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    .line 256
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 257
    return-void

    .line 250
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
    :pswitch_9
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    .line 251
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 252
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public blacklist setDownload(Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public blacklist setIpPayload(Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    .line 143
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public blacklist setMedia(Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setMmtpRecord(Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public blacklist setMonitorEvent(Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    .line 173
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public blacklist setPes(Landroid/hardware/tv/tuner/DemuxFilterPesEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setSection(Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setStartId(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 189
    return-void
.end method

.method public blacklist setTemi(Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    .line 158
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method public blacklist setTsRecord(Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 209
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getStartId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMonitorEvent()Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto :goto_0

    .line 233
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTemi()Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    goto :goto_0

    .line 230
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getIpPayload()Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    goto :goto_0

    .line 227
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 228
    goto :goto_0

    .line 224
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMmtpRecord()Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto :goto_0

    .line 221
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTsRecord()Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 222
    goto :goto_0

    .line 218
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getPes()Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_0

    .line 215
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMedia()Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_0

    .line 212
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    nop

    .line 242
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
