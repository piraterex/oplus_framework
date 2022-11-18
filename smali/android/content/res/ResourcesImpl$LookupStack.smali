.class Landroid/content/res/ResourcesImpl$LookupStack;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupStack"
.end annotation


# instance fields
.field private greylist-max-o mIds:[I

.field private greylist-max-o mSize:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 1

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1645
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    .line 1646
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/ResourcesImpl$LookupStack-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 1654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    if-ge v0, v1, :cond_1

    .line 1655
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1656
    const/4 v1, 0x1

    return v1

    .line 1654
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1659
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o pop()V
    .locals 1

    .line 1663
    iget v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    .line 1664
    return-void
.end method

.method public greylist-max-o push(I)V
    .locals 2
    .param p1, "id"    # I

    .line 1649
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    iget v1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    .line 1650
    iget v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    .line 1651
    return-void
.end method
