.class Landroid/media/TtmlCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "TtmlRenderer.java"


# instance fields
.field public blacklist mText:Ljava/lang/String;

.field public blacklist mTtmlFragment:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "ttmlFragment"    # Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 284
    iput-wide p1, p0, Landroid/media/TtmlCue;->mStartTimeMs:J

    .line 285
    iput-wide p3, p0, Landroid/media/TtmlCue;->mEndTimeMs:J

    .line 286
    iput-object p5, p0, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    .line 287
    iput-object p6, p0, Landroid/media/TtmlCue;->mTtmlFragment:Ljava/lang/String;

    .line 288
    return-void
.end method
