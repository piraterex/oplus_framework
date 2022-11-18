.class public final synthetic Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsService$2;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsService$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/ImsService$2;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/ImsService$2;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService$2;->lambda$querySupportedImsFeatures$6$android-telephony-ims-ImsService$2()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v0

    return-object v0
.end method
