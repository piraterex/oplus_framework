.class Landroid/widget/Editor$3;
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

    .line 423
    iput-object p1, p0, Landroid/widget/Editor$3;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 426
    iget-object v0, p0, Landroid/widget/Editor$3;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/widget/Editor$3;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 429
    :cond_0
    return-void
.end method
