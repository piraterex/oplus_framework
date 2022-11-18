.class Landroid/app/Presentation$1;
.super Ljava/lang/Object;
.source "Presentation.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Presentation;


# direct methods
.method constructor blacklist <init>(Landroid/app/Presentation;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Presentation;

    .line 338
    iput-object p1, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 341
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 352
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$mhandleDisplayChanged(Landroid/app/Presentation;)V

    .line 355
    :cond_0
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 345
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$mhandleDisplayRemoved(Landroid/app/Presentation;)V

    .line 348
    :cond_0
    return-void
.end method
