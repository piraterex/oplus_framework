.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

.field public final synthetic blacklist f$1:Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;

.field public final synthetic blacklist f$2:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;->f$1:Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;

    iput-object p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;->f$2:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;->f$1:Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;

    iget-object v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;->f$2:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onImsCallDisconnectCauseChanged$53$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method
