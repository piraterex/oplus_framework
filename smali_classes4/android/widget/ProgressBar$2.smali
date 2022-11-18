.class Landroid/widget/ProgressBar$2;
.super Landroid/util/FloatProperty;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/widget/ProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ProgressBar;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ProgressBar;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ProgressBar;
    .param p2, "name"    # Ljava/lang/String;

    .line 2426
    iput-object p1, p0, Landroid/widget/ProgressBar$2;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/widget/ProgressBar;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/widget/ProgressBar;

    .line 2435
    invoke-static {p1}, Landroid/widget/ProgressBar;->-$$Nest$fgetmVisualProgress(Landroid/widget/ProgressBar;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2426
    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar$2;->get(Landroid/widget/ProgressBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/widget/ProgressBar;F)V
    .locals 1
    .param p1, "object"    # Landroid/widget/ProgressBar;
    .param p2, "value"    # F

    .line 2429
    const v0, 0x102000d

    invoke-static {p1, v0, p2}, Landroid/widget/ProgressBar;->-$$Nest$msetVisualProgress(Landroid/widget/ProgressBar;IF)V

    .line 2430
    invoke-static {p1, p2}, Landroid/widget/ProgressBar;->-$$Nest$fputmVisualProgress(Landroid/widget/ProgressBar;F)V

    .line 2431
    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 2426
    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar$2;->setValue(Landroid/widget/ProgressBar;F)V

    return-void
.end method
