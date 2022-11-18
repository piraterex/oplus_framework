.class Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;
.super Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;


# direct methods
.method constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    .line 160
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDisplayEmpty(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 179
    .local v0, "token":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-static {v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 180
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-static {v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;

    invoke-virtual {v3, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->onDisplayEmpty(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw v2
.end method

.method public blacklist onTopActivityChanged(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;

    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 166
    .local v0, "token":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-static {v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 167
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-static {v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;

    .line 168
    invoke-virtual {v3, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->onTopActivityChanged(ILandroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    nop

    .line 173
    return-void

    .line 171
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    throw v2
.end method
