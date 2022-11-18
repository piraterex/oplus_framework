.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field public static final whitelist ORIENTATION_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final greylist-max-o localLOGV:Z


# instance fields
.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mOldListener:Landroid/view/OrientationListener;

.field private greylist-max-o mOrientation:I

.field private greylist-max-o mRate:I

.field private greylist-max-o mSensor:Landroid/hardware/Sensor;

.field private greylist-max-o mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private greylist-max-o mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .locals 0

    iget-object p0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I
    .locals 0

    iget p0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetlocalLOGV()Z
    .locals 1

    sget-boolean v0, Landroid/view/OrientationEventListener;->localLOGV:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 41
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/OrientationEventListener;->DEBUG:Z

    .line 42
    sput-boolean v0, Landroid/view/OrientationEventListener;->localLOGV:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 79
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    .line 82
    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist canDetectOrientation()Z
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist disable()V
    .locals 3

    .line 116
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    const-string v1, "OrientationEventListener"

    if-nez v0, :cond_0

    .line 117
    const-string v0, "Cannot detect sensors. Invalid disable"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 120
    :cond_0
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 121
    sget-boolean v0, Landroid/view/OrientationEventListener;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "OrientationEventListener disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 125
    :cond_2
    return-void
.end method

.method public whitelist enable()V
    .locals 4

    .line 101
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    const-string v1, "OrientationEventListener"

    if-nez v0, :cond_0

    .line 102
    const-string v0, "Cannot detect sensors. Not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 105
    :cond_0
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v0, :cond_2

    .line 106
    sget-boolean v0, Landroid/view/OrientationEventListener;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "OrientationEventListener enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 110
    :cond_2
    return-void
.end method

.method public abstract whitelist onOrientationChanged(I)V
.end method

.method greylist-max-o registerListener(Landroid/view/OrientationListener;)V
    .locals 2
    .param p1, "lis"    # Landroid/view/OrientationListener;

    .line 91
    sget-boolean v0, Landroid/view/OrientationEventListener;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OrientationEventListener"

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    .line 94
    return-void
.end method
