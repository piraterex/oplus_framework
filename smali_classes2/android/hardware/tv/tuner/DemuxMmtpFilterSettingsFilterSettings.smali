.class public final Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
.super Ljava/lang/Object;
.source "DemuxMmtpFilterSettingsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist av:I = 0x2

.field public static final blacklist download:I = 0x5

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist pesData:I = 0x3

.field public static final blacklist record:I = 0x4

.field public static final blacklist section:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    .line 30
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 237
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

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

    .line 255
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    .line 256
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 257
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 251
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

    .line 249
    :pswitch_0
    const-string v0, "download"

    return-object v0

    .line 248
    :pswitch_1
    const-string v0, "record"

    return-object v0

    .line 247
    :pswitch_2
    const-string v0, "pesData"

    return-object v0

    .line 246
    :pswitch_3
    const-string v0, "av"

    return-object v0

    .line 245
    :pswitch_4
    const-string v0, "section"

    return-object v0

    .line 244
    :pswitch_5
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist av(Landroid/hardware/tv/tuner/DemuxFilterAvSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    .line 70
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 229
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 230
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 231
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 233
    :cond_1
    return v0
.end method

.method public static blacklist download(Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    .line 115
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .locals 3
    .param p0, "_value"    # Z

    .line 40
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist pesData(Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    .line 85
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist record(Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    .line 100
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist section(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 55
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 221
    goto :goto_0

    .line 217
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 218
    goto :goto_0

    .line 214
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 215
    goto :goto_0

    .line 211
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 212
    nop

    .line 226
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;
    .locals 1

    .line 74
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 75
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    return-object v0
.end method

.method public blacklist getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;
    .locals 1

    .line 119
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 120
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 45
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;
    .locals 1

    .line 89
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 90
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    return-object v0
.end method

.method public blacklist getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;
    .locals 1

    .line 104
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 105
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    return-object v0
.end method

.method public blacklist getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    .locals 1

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 60
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    return-object v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 34
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 203
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

    .line 199
    :pswitch_0
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    .line 200
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 201
    return-void

    .line 194
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;
    :pswitch_1
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    .line 195
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 196
    return-void

    .line 189
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;
    :pswitch_2
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    .line 190
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 191
    return-void

    .line 184
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;
    :pswitch_3
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    .line 185
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterAvSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 186
    return-void

    .line 179
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterAvSettings;
    :pswitch_4
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 180
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 181
    return-void

    .line 174
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 175
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 176
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAv(Landroid/hardware/tv/tuner/DemuxFilterAvSettings;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public blacklist setDownload(Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    .line 124
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public blacklist setPesData(Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    .line 94
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public blacklist setRecord(Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    .line 109
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method public blacklist setSection(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 145
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 161
    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    goto :goto_0

    .line 154
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    goto :goto_0

    .line 151
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    goto :goto_0

    .line 148
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    nop

    .line 166
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
