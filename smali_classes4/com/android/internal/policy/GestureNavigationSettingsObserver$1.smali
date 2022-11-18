.class Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;
.super Ljava/lang/Object;
.source "GestureNavigationSettingsObserver.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/GestureNavigationSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 52
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->-$$Nest$fgetmOnChangeRunnable(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->-$$Nest$fgetmOnChangeRunnable(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 56
    :cond_0
    return-void
.end method
