.class Landroid/media/WebVttParser$4;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 816
    const-class v0, Landroid/media/WebVttParser;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    .line 816
    iput-object p1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .line 819
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 820
    return-void

    .line 823
    :cond_0
    nop

    .line 825
    const-string v0, "NOTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NOTE "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueText(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 829
    :cond_2
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    new-instance v1, Landroid/media/TextTrackCue;

    invoke-direct {v1}, Landroid/media/TextTrackCue;-><init>()V

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmCue(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)V

    .line 830
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCueTexts(Landroid/media/WebVttParser;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 832
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueTime(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 833
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmPhase(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_0

    .line 836
    :cond_3
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iput-object p1, v0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 838
    :goto_0
    return-void
.end method
