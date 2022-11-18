.class Landroid/widget/Gallery$2;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Gallery;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Gallery;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Gallery;

    .line 1289
    iput-object p1, p0, Landroid/widget/Gallery$2;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 1292
    iget-object v0, p0, Landroid/widget/Gallery$2;->this$0:Landroid/widget/Gallery;

    invoke-static {v0}, Landroid/widget/Gallery;->-$$Nest$mdispatchUnpress(Landroid/widget/Gallery;)V

    .line 1293
    return-void
.end method
