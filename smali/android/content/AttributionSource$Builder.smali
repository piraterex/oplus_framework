.class public final Landroid/content/AttributionSource$Builder;
.super Ljava/lang/Object;
.source "AttributionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private blacklist mBuilderFieldsSet:J


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 536
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    .line 545
    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 546
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/AttributionSource;)V
    .locals 3
    .param p1, "current"    # Landroid/content/AttributionSource;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 536
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    .line 549
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 553
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 554
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 556
    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 558
    return-void

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current AttributionSource can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 653
    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 657
    return-void

    .line 654
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/content/AttributionSource;
    .locals 8

    .line 627
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 628
    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    .line 630
    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 633
    :cond_0
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 636
    :cond_1
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 637
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 639
    :cond_2
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    .line 640
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 643
    :cond_3
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {}, Landroid/content/AttributionSource;->-$$Nest$sfgetsDefaultToken()Landroid/os/Binder;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 645
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-nez v0, :cond_4

    .line 647
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 649
    :cond_4
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-direct {v0, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    return-object v0
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 574
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 575
    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    .line 576
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 577
    return-object p0
.end method

.method public whitelist setNext(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .locals 4
    .param p1, "value"    # Landroid/content/AttributionSource;

    .line 618
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 619
    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    .line 620
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 621
    :cond_0
    iget-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :goto_0
    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 622
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 564
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 565
    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    .line 566
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 567
    return-object p0
.end method

.method public whitelist setRenouncedPermissions(Ljava/util/Set;)Landroid/content/AttributionSource$Builder;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/AttributionSource$Builder;"
        }
    .end annotation

    .line 607
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 608
    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    .line 609
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_0

    .line 610
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 611
    return-object p0
.end method
