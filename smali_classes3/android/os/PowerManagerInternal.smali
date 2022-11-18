.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$LowPowerModeListener;
    }
.end annotation


# static fields
.field public static final blacklist BOOST_DISPLAY_UPDATE_IMMINENT:I = 0x1

.field public static final blacklist BOOST_INTERACTION:I = 0x0

.field public static final blacklist MODE_DEVICE_IDLE:I = 0x8

.field public static final blacklist MODE_DISPLAY_INACTIVE:I = 0x9

.field public static final blacklist MODE_DOUBLE_TAP_TO_WAKE:I = 0x0

.field public static final blacklist MODE_EXPENSIVE_RENDERING:I = 0x6

.field public static final blacklist MODE_FIXED_PERFORMANCE:I = 0x3

.field public static final blacklist MODE_INTERACTIVE:I = 0x7

.field public static final blacklist MODE_LAUNCH:I = 0x5

.field public static final blacklist MODE_LOW_POWER:I = 0x1

.field public static final blacklist MODE_SUSTAINED_PERFORMANCE:I = 0x2

.field public static final blacklist MODE_VR:I = 0x4

.field public static final greylist-max-o WAKEFULNESS_ASLEEP:I = 0x0

.field public static final greylist-max-o WAKEFULNESS_AWAKE:I = 0x1

.field public static final greylist-max-o WAKEFULNESS_DOZING:I = 0x3

.field public static final greylist-max-o WAKEFULNESS_DREAMING:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o isInteractive(I)Z
    .locals 2
    .param p0, "wakefulness"    # I

    .line 97
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static greylist-max-o wakefulnessToProtoEnum(I)I
    .locals 1
    .param p0, "wakefulness"    # I

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 88
    return p0

    .line 86
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 84
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 82
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 80
    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o wakefulnessToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "wakefulness"    # I

    .line 60
    packed-switch p0, :pswitch_data_0

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_0
    const-string v0, "Dozing"

    return-object v0

    .line 66
    :pswitch_1
    const-string v0, "Dreaming"

    return-object v0

    .line 64
    :pswitch_2
    const-string v0, "Awake"

    return-object v0

    .line 62
    :pswitch_3
    const-string v0, "Asleep"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract greylist-max-o finishUidChanges()V
.end method

.method public abstract blacklist getLastGoToSleep()Landroid/os/PowerManager$SleepData;
.end method

.method public abstract blacklist getLastWakeup()Landroid/os/PowerManager$WakeData;
.end method

.method public abstract greylist-max-o getLowPowerState(I)Landroid/os/PowerSaveState;
.end method

.method public abstract blacklist interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
.end method

.method public greylist-max-o registerLowPowerModeObserver(ILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "serviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/os/PowerSaveState;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/PowerSaveState;>;"
    new-instance v0, Landroid/os/PowerManagerInternal$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManagerInternal$1;-><init>(Landroid/os/PowerManagerInternal;ILjava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 172
    return-void
.end method

.method public abstract greylist-max-o registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract greylist-max-o setDeviceIdleMode(Z)Z
.end method

.method public abstract greylist-max-o setDeviceIdleTempWhitelist([I)V
.end method

.method public abstract greylist-max-o setDeviceIdleWhitelist([I)V
.end method

.method public abstract greylist-max-o setDozeOverrideFromDreamManager(II)V
.end method

.method public abstract greylist-max-o setDrawWakeLockOverrideFromSidekick(Z)V
.end method

.method public abstract greylist-max-o setLightDeviceIdleMode(Z)Z
.end method

.method public abstract blacklist setLowPowerStandbyActive(Z)V
.end method

.method public abstract blacklist setLowPowerStandbyAllowlist([I)V
.end method

.method public abstract greylist-max-o setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
.end method

.method public abstract blacklist setPowerBoost(II)V
.end method

.method public abstract blacklist setPowerMode(IZ)V
.end method

.method public abstract blacklist setScreenBrightnessOverrideFromWindowManager(F)V
.end method

.method public abstract greylist-max-o setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract greylist-max-o setUserInactiveOverrideFromWindowManager()V
.end method

.method public abstract greylist-max-o startUidChanges()V
.end method

.method public abstract greylist-max-o uidActive(I)V
.end method

.method public abstract greylist-max-o uidGone(I)V
.end method

.method public abstract greylist-max-o uidIdle(I)V
.end method

.method public abstract greylist-max-o updateUidProcState(II)V
.end method

.method public abstract blacklist wasDeviceIdleFor(J)Z
.end method
