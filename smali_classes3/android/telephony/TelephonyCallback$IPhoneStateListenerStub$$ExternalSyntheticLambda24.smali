.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

.field public final synthetic blacklist f$1:Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;->f$1:Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;

    iput-object p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;->f$1:Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;

    iget-object v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPhysicalChannelConfigChanged$59$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    return-void
.end method
