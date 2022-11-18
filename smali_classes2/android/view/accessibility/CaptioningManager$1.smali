.class Landroid/view/accessibility/CaptioningManager$1;
.super Ljava/lang/Object;
.source "CaptioningManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/accessibility/CaptioningManager;

    .line 357
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 360
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifyUserStyleChanged(Landroid/view/accessibility/CaptioningManager;)V

    .line 361
    return-void
.end method
