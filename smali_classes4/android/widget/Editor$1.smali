.class Landroid/widget/Editor$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    .line 254
    iput-object p1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mupdate(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    .line 258
    return-void
.end method
