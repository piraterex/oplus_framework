.class Landroid/os/PowerManagerInternal$1;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/PowerManagerInternal;

.field final synthetic blacklist val$listener:Ljava/util/function/Consumer;

.field final synthetic blacklist val$serviceType:I


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManagerInternal;ILjava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/PowerManagerInternal;

    .line 161
    iput-object p1, p0, Landroid/os/PowerManagerInternal$1;->this$0:Landroid/os/PowerManagerInternal;

    iput p2, p0, Landroid/os/PowerManagerInternal$1;->val$serviceType:I

    iput-object p3, p0, Landroid/os/PowerManagerInternal$1;->val$listener:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getServiceType()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/os/PowerManagerInternal$1;->val$serviceType:I

    return v0
.end method

.method public blacklist onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 1
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 169
    iget-object v0, p0, Landroid/os/PowerManagerInternal$1;->val$listener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 170
    return-void
.end method
