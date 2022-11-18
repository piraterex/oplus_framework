.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

.field public final synthetic blacklist f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature$1;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iput-object p2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;->f$1:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$shouldProcessCall$5$android-telephony-ims-feature-MmTelFeature$1([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
