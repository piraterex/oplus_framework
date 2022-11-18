.class public final synthetic Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyManager$18;

.field public final synthetic blacklist f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyManager$18;Landroid/os/OutcomeReceiver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyManager$18;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    iput p3, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyManager$18;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    iget v2, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager$18;->lambda$onReceiveResult$0$android-telephony-TelephonyManager$18(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method
