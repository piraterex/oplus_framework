.class Landroid/hardware/SensorPrivacyManager$3;
.super Landroid/hardware/ISensorPrivacyListener$Stub;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorPrivacyManager;->addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SensorPrivacyManager;

.field final synthetic blacklist val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SensorPrivacyManager;Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/SensorPrivacyManager;

    .line 848
    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$3;->this$0:Landroid/hardware/SensorPrivacyManager;

    iput-object p2, p0, Landroid/hardware/SensorPrivacyManager$3;->val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSensorPrivacyChanged(IIZ)V
    .locals 1
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 852
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$3;->val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    invoke-interface {v0, p3}, Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;->onAllSensorPrivacyChanged(Z)V

    .line 853
    return-void
.end method
