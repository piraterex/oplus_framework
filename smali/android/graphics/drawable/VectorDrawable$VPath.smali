.class abstract Landroid/graphics/drawable/VectorDrawable$VPath;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VPath"
.end annotation


# static fields
.field private static final greylist-max-o PATH_DATA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VPath;",
            "Landroid/util/PathParser$PathData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mChangingConfigurations:I

.field protected greylist-max-o mPathData:Landroid/util/PathParser$PathData;

.field greylist-max-o mPathName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 1647
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPath$1;

    const-class v1, Landroid/util/PathParser$PathData;

    const-string/jumbo v2, "pathData"

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VPath$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1668
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1642
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1670
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPath;

    .line 1672
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1642
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1673
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    .line 1674
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 1675
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/PathParser$PathData;

    invoke-direct {v0, v1}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    :goto_0
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1676
    return-void
.end method


# virtual methods
.method public greylist-max-o getPathData()Landroid/util/PathParser$PathData;
    .locals 1

    .line 1685
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-object v0
.end method

.method public greylist-max-o getPathName()Ljava/lang/String;
    .locals 1

    .line 1679
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1661
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1662
    return-object v0

    .line 1665
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o setPathData(Landroid/util/PathParser$PathData;)V
    .locals 4
    .param p1, "pathData"    # Landroid/util/PathParser$PathData;

    .line 1691
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-virtual {v0, p1}, Landroid/util/PathParser$PathData;->setPathData(Landroid/util/PathParser$PathData;)V

    .line 1692
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-virtual {v2}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPathData(JJ)V

    .line 1695
    :cond_0
    return-void
.end method
