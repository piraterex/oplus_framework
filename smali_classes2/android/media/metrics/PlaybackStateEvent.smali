.class public final Landroid/media/metrics/PlaybackStateEvent;
.super Landroid/media/metrics/Event;
.source "PlaybackStateEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackStateEvent$Builder;,
        Landroid/media/metrics/PlaybackStateEvent$State;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_ABANDONED:I = 0xf

.field public static final whitelist STATE_BUFFERING:I = 0x6

.field public static final whitelist STATE_ENDED:I = 0xb

.field public static final whitelist STATE_FAILED:I = 0xd

.field public static final whitelist STATE_INTERRUPTED_BY_AD:I = 0xe

.field public static final whitelist STATE_JOINING_BACKGROUND:I = 0x1

.field public static final whitelist STATE_JOINING_FOREGROUND:I = 0x2

.field public static final whitelist STATE_NOT_STARTED:I = 0x0

.field public static final whitelist STATE_PAUSED:I = 0x4

.field public static final whitelist STATE_PAUSED_BUFFERING:I = 0x7

.field public static final whitelist STATE_PLAYING:I = 0x3

.field public static final whitelist STATE_SEEKING:I = 0x5

.field public static final whitelist STATE_STOPPED:I = 0xc

.field public static final whitelist STATE_SUPPRESSED:I = 0x9

.field public static final whitelist STATE_SUPPRESSED_BUFFERING:I = 0xa


# instance fields
.field private final blacklist mState:I

.field private final blacklist mTimeSinceCreatedMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 216
    new-instance v0, Landroid/media/metrics/PlaybackStateEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackStateEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJLandroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "timeSinceCreatedMillis"    # J
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 144
    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    .line 145
    iput-wide p2, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    .line 146
    iput p1, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    .line 147
    invoke-virtual {p4}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    .line 148
    return-void
.end method

.method synthetic constructor blacklist <init>(IJLandroid/os/Bundle;Landroid/media/metrics/PlaybackStateEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/metrics/PlaybackStateEvent;-><init>(IJLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 206
    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .local v0, "state":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 209
    .local v1, "timeSinceCreatedMillis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 211
    .local v3, "extras":Landroid/os/Bundle;
    iput v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    .line 212
    iput-wide v1, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    .line 213
    iput-object v3, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    .line 214
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/metrics/PlaybackStateEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/metrics/PlaybackStateEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 102
    packed-switch p0, :pswitch_data_0

    .line 134
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_1
    const-string v0, "STATE_ABANDONED"

    return-object v0

    .line 130
    :pswitch_2
    const-string v0, "STATE_INTERRUPTED_BY_AD"

    return-object v0

    .line 128
    :pswitch_3
    const-string v0, "STATE_FAILED"

    return-object v0

    .line 126
    :pswitch_4
    const-string v0, "STATE_STOPPED"

    return-object v0

    .line 124
    :pswitch_5
    const-string v0, "STATE_ENDED"

    return-object v0

    .line 122
    :pswitch_6
    const-string v0, "STATE_SUPPRESSED_BUFFERING"

    return-object v0

    .line 120
    :pswitch_7
    const-string v0, "STATE_SUPPRESSED"

    return-object v0

    .line 118
    :pswitch_8
    const-string v0, "STATE_PAUSED_BUFFERING"

    return-object v0

    .line 116
    :pswitch_9
    const-string v0, "STATE_BUFFERING"

    return-object v0

    .line 114
    :pswitch_a
    const-string v0, "STATE_SEEKING"

    return-object v0

    .line 112
    :pswitch_b
    const-string v0, "STATE_PAUSED"

    return-object v0

    .line 110
    :pswitch_c
    const-string v0, "STATE_PLAYING"

    return-object v0

    .line 108
    :pswitch_d
    const-string v0, "STATE_JOINING_FOREGROUND"

    return-object v0

    .line 106
    :pswitch_e
    const-string v0, "STATE_JOINING_BACKGROUND"

    return-object v0

    .line 104
    :pswitch_f
    const-string v0, "STATE_NOT_STARTED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 182
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 183
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 184
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/PlaybackStateEvent;

    .line 185
    .local v2, "that":Landroid/media/metrics/PlaybackStateEvent;
    iget v3, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    iget v4, v2, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 183
    .end local v2    # "that":Landroid/media/metrics/PlaybackStateEvent;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 155
    iget v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    return v0
.end method

.method public whitelist getTimeSinceCreatedMillis()J
    .locals 2

    .line 167
    iget-wide v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 196
    iget v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-wide v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget-object v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method
