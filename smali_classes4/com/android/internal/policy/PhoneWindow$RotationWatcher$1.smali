.class Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$RotationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow$RotationWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    .line 3672
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;->this$0:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 3674
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;->this$0:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->dispatchRotationChanged()V

    .line 3675
    return-void
.end method
