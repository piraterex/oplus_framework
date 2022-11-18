.class final Landroid/app/ActivityThread$ProviderKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderKey"
.end annotation


# instance fields
.field final greylist-max-o authority:Ljava/lang/String;

.field blacklist mHolder:Landroid/app/ContentProviderHolder;

.field final blacklist mLock:Ljava/lang/Object;

.field final greylist-max-o userId:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    .line 476
    iput p2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    .line 477
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    .line 478
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 482
    instance-of v0, p1, Landroid/app/ActivityThread$ProviderKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 483
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityThread$ProviderKey;

    .line 484
    .local v0, "other":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    iget v3, v0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 486
    .end local v0    # "other":Landroid/app/ActivityThread$ProviderKey;
    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 491
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    xor-int/2addr v0, v1

    return v0
.end method
