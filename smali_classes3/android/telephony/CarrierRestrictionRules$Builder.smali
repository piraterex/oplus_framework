.class public final Landroid/telephony/CarrierRestrictionRules$Builder;
.super Ljava/lang/Object;
.source "CarrierRestrictionRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierRestrictionRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mRules:Landroid/telephony/CarrierRestrictionRules;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/CarrierRestrictionRules;-><init>(Landroid/telephony/CarrierRestrictionRules-IA;)V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    .line 342
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/CarrierRestrictionRules;
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    return-object v0
.end method

.method public whitelist setAllCarriersAllowed()Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 2

    .line 353
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V

    .line 356
    return-object p0
.end method

.method public whitelist setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    .line 366
    .local p1, "allowedCarriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    .line 367
    return-object p0
.end method

.method public whitelist setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 1
    .param p1, "carrierRestrictionDefault"    # I

    .line 388
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V

    .line 389
    return-object p0
.end method

.method public whitelist setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    .line 377
    .local p1, "excludedCarriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    .line 378
    return-object p0
.end method

.method public whitelist setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 1
    .param p1, "multiSimPolicy"    # I

    .line 398
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmMultiSimPolicy(Landroid/telephony/CarrierRestrictionRules;I)V

    .line 399
    return-object p0
.end method
