.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Ljava/lang/String;

.field public final synthetic blacklist f$5:Z

.field public final synthetic blacklist f$6:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature$1;IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iput p2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$4:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$5:Z

    iput-object p7, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$6:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 7

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iget v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$1:I

    iget v2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$4:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$5:Z

    iget-object v6, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;->f$6:[B

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$sendSms$16$android-telephony-ims-feature-MmTelFeature$1(IILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method
