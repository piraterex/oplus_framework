.class public final synthetic Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

.field public final synthetic blacklist f$1:Landroid/telephony/PhoneStateListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;->f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;->f$1:Landroid/telephony/PhoneStateListener;

    iput p3, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;->f$2:I

    iput p4, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;->f$3:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;->f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;->f$1:Landroid/telephony/PhoneStateListener;

    iget v2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;->f$2:I

    iget v3, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCallDisconnectCauseChanged$25$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method
