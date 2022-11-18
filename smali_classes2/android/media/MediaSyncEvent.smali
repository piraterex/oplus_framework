.class public Landroid/media/MediaSyncEvent;
.super Ljava/lang/Object;
.source "MediaSyncEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaSyncEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SYNC_EVENT_NONE:I = 0x0

.field public static final whitelist SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field public static final whitelist SYNC_EVENT_SHARE_AUDIO_HISTORY:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAudioSession:I

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Landroid/media/MediaSyncEvent$1;

    invoke-direct {v0}, Landroid/media/MediaSyncEvent$1;-><init>()V

    sput-object v0, Landroid/media/MediaSyncEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .locals 1
    .param p1, "eventType"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    .line 84
    iput p1, p0, Landroid/media/MediaSyncEvent;->mType:I

    .line 85
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaSyncEvent;->mType:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    .line 155
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/MediaSyncEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaSyncEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createEvent(I)Landroid/media/MediaSyncEvent;
    .locals 3
    .param p0, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 72
    invoke-static {p0}, Landroid/media/MediaSyncEvent;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/media/MediaSyncEvent;

    invoke-direct {v0, p0}, Landroid/media/MediaSyncEvent;-><init>(I)V

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not a valid MediaSyncEvent type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o isValidType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 129
    sparse-switch p0, :sswitch_data_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 133
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 200
    sparse-switch p0, :sswitch_data_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown event type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :sswitch_0
    const-string v0, "SYNC_EVENT_SHARE_AUDIO_HISTORY"

    return-object v0

    .line 204
    :sswitch_1
    const-string v0, "SYNC_EVENT_PRESENTATION_COMPLETE"

    return-object v0

    .line 202
    :sswitch_2
    const-string v0, "SYNC_EVENT_NONE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 174
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 175
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/MediaSyncEvent;

    .line 178
    .local v2, "that":Landroid/media/MediaSyncEvent;
    iget v3, p0, Landroid/media/MediaSyncEvent;->mType:I

    iget v4, v2, Landroid/media/MediaSyncEvent;->mType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    iget v4, v2, Landroid/media/MediaSyncEvent;->mAudioSession:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 175
    .end local v2    # "that":Landroid/media/MediaSyncEvent;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAudioSessionId()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 115
    iget v0, p0, Landroid/media/MediaSyncEvent;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/MediaSyncEvent;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setAudioSessionId(I)Landroid/media/MediaSyncEvent;
    .locals 3
    .param p1, "audioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 101
    if-lez p1, :cond_0

    .line 102
    iput p1, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    .line 106
    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid session ID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSyncEvent: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaSyncEvent;->mType:I

    .line 190
    invoke-static {v2}, Landroid/media/MediaSyncEvent;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 189
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget v0, p0, Landroid/media/MediaSyncEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method
