.class Landroid/media/tv/TvView$2;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvView;

    .line 144
    iput-object p1, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .line 150
    if-eqz p2, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/InputEvent;

    .line 155
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v1, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvView;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {v1}, Landroid/media/tv/TvView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 159
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    .line 162
    :cond_2
    return-void
.end method
