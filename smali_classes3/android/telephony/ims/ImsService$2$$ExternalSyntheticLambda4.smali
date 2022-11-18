.class public final synthetic Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsService$2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsService$2;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/ImsService$2;

    iput p2, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/ImsService$2;

    iget v1, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsService$2;->lambda$removeImsFeature$5$android-telephony-ims-ImsService$2(II)V

    return-void
.end method
