.class public abstract Landroid/os/VibratorManager;
.super Ljava/lang/Object;
.source "VibratorManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VibratorManager"


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract whitelist cancel()V
.end method

.method public abstract blacklist cancel(I)V
.end method

.method public abstract whitelist getDefaultVibrator()Landroid/os/Vibrator;
.end method

.method public abstract whitelist getVibrator(I)Landroid/os/Vibrator;
.end method

.method public abstract whitelist getVibratorIds()[I
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 85
    const-string v0, "VibratorManager"

    const-string v1, "Always-on effects aren\'t supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
.end method

.method public final whitelist vibrate(Landroid/os/CombinedVibration;)V
    .locals 1
    .param p1, "effect"    # Landroid/os/CombinedVibration;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/VibratorManager;->vibrate(Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)V

    .line 104
    return-void
.end method

.method public final whitelist vibrate(Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)V
    .locals 6
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .param p2, "attributes"    # Landroid/os/VibrationAttributes;

    .line 126
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 127
    return-void
.end method
