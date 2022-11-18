.class Landroid/app/ActivityTaskManager$2;
.super Landroid/util/Singleton;
.source "ActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IActivityTaskManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IActivityTaskManager;
    .locals 2

    .line 156
    const-string v0, "activity_task"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 157
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IActivityTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroid/app/ActivityTaskManager$2;->create()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method
