.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Activity;

    .line 1681
    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBackInvoked()V
    .locals 2

    .line 1684
    iget-object v0, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$mnavigateBack(Landroid/app/Activity;)V

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will call navigateBack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    return-void
.end method
