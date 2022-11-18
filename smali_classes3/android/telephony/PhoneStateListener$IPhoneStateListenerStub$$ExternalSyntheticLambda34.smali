.class public final synthetic Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

.field public final synthetic blacklist f$1:Landroid/telephony/PhoneStateListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;->f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;->f$1:Landroid/telephony/PhoneStateListener;

    iput p3, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;->f$2:I

    iput-object p4, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;->f$0:Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;->f$1:Landroid/telephony/PhoneStateListener;

    iget v2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;->f$2:I

    iget-object v3, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onLegacyCallStateChanged$11$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    return-void
.end method
