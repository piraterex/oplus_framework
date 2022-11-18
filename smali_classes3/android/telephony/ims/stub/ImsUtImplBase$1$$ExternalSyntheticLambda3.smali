.class public final synthetic Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:[Ljava/lang/String;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iput p2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$3:[Ljava/lang/String;

    iput p5, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$4:I

    iput-object p6, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iget v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$3:[Ljava/lang/String;

    iget v4, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$4:I

    iget-object v5, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallBarringWithPassword$19$android-telephony-ims-stub-ImsUtImplBase$1(II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
