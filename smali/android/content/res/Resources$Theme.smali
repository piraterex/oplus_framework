.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# static fields
.field private static final blacklist MAX_NUMBER_OF_TRACING_PARENT_THEME:I = 0x64


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

.field final synthetic blacklist this$0:Landroid/content/res/Resources;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "this$0"    # Landroid/content/res/Resources;

    .line 1604
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1598
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    .line 1605
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hexString"    # Ljava/lang/String;

    .line 1908
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist applyStyle(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 1631
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1632
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->applyStyle(IZ)V

    .line 1633
    monitor-exit v0

    .line 1634
    return-void

    .line 1633
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1873
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1874
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->dump(ILjava/lang/String;Ljava/lang/String;)V

    .line 1875
    monitor-exit v0

    .line 1876
    return-void

    .line 1875
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o encode(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1927
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    .line 1928
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v0

    .line 1929
    .local v0, "properties":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1930
    aget-object v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1932
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    .line 1933
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 2029
    if-ne p0, p1, :cond_0

    .line 2030
    const/4 v0, 0x1

    return v0

    .line 2033
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2037
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/res/Resources$Theme;

    .line 2038
    .local v0, "other":Landroid/content/res/Resources$Theme;
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$ThemeKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2034
    .end local v0    # "other":Landroid/content/res/Resources$Theme;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAllAttributes()[I
    .locals 2

    .line 1822
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1823
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAllAttributes()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o getAppliedStyleResId()I
    .locals 2

    .line 1886
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1887
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1888
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getAttributeResolutionStack(III)[I
    .locals 3
    .param p1, "defStyleAttr"    # I
    .param p2, "defStyleRes"    # I
    .param p3, "explicitStyleRes"    # I

    .line 2011
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2012
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAttributeResolutionStack(III)[I

    move-result-object v1

    .line 2014
    .local v1, "stack":[I
    if-nez v1, :cond_0

    .line 2015
    const/4 v2, 0x0

    new-array v2, v2, [I

    monitor-exit v0

    return-object v2

    .line 2017
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2019
    .end local v1    # "stack":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 1860
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1861
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getChangingConfigurations()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1848
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExplicitStyle(Landroid/util/AttributeSet;)I
    .locals 5
    .param p1, "set"    # Landroid/util/AttributeSet;

    .line 1970
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1971
    return v0

    .line 1973
    :cond_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    .line 1974
    .local v1, "styleAttr":I
    if-nez v1, :cond_1

    .line 1975
    return v0

    .line 1977
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1978
    .local v2, "styleAttrType":Ljava/lang/String;
    const-string v3, "attr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1979
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1980
    .local v3, "explicitStyle":Landroid/util/TypedValue;
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 1981
    .local v4, "resolved":Z
    if-eqz v4, :cond_2

    .line 1982
    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    return v0

    .line 1981
    .end local v3    # "explicitStyle":Landroid/util/TypedValue;
    .end local v4    # "resolved":Z
    :cond_2
    goto :goto_0

    .line 1984
    :cond_3
    const-string/jumbo v3, "style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1985
    return v1

    .line 1984
    :cond_4
    :goto_0
    nop

    .line 1987
    return v0
.end method

.method public greylist-max-o getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 2

    .line 1902
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1904
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o getNativeTheme()J
    .locals 3

    .line 1880
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1881
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getNativeTheme()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1882
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getParentThemeIdentifier(I)I
    .locals 2
    .param p1, "resId"    # I

    .line 1893
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getParentThemeIdentifier(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1833
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    return-object v0
.end method

.method public greylist-max-o getTheme()[Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "theme"
        hasAdjacentMapping = true
    .end annotation

    .line 1920
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1921
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getTheme()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1922
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 2024
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "resId"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1705
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1763
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1764
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1766
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "attrs"    # [I

    .line 1675
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1676
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1677
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist rebase()V
    .locals 2

    .line 1941
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1942
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    .line 1943
    monitor-exit v0

    .line 1944
    return-void

    .line 1943
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist rebase(Landroid/content/res/ResourcesImpl;)V
    .locals 3
    .param p1, "resImpl"    # Landroid/content/res/ResourcesImpl;

    .line 1947
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1948
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    iget-object v2, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase(Landroid/content/res/AssetManager;)V

    .line 1949
    monitor-exit v0

    .line 1950
    return-void

    .line 1949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 2
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 1810
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1811
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist resolveAttributes([I[I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "values"    # [I
    .param p2, "attrs"    # [I

    .line 1787
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1788
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1789
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .locals 2
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1608
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1609
    :try_start_0
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1610
    monitor-exit v0

    .line 1611
    return-void

    .line 1610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setTo(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    .line 1646
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_0
    iget-object v1, p1, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1648
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    iget-object v3, p1, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v2, v3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    .line 1649
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1651
    return-void

    .line 1649
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/content/res/Resources$Theme;
    .end local p1    # "other":Landroid/content/res/Resources$Theme;
    :try_start_4
    throw v2

    .line 1650
    .restart local p0    # "this":Landroid/content/res/Resources$Theme;
    .restart local p1    # "other":Landroid/content/res/Resources$Theme;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 2043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2044
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getAppliedStyleResId()I

    move-result v1

    .line 2046
    .local v1, "themeResId":I
    const/4 v2, 0x0

    .line 2047
    .local v2, "i":I
    const-string v3, "InheritanceMap=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    :goto_0
    if-lez v1, :cond_2

    .line 2049
    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    .line 2050
    const-string v3, ",..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    goto :goto_1

    .line 2054
    :cond_0
    if-lez v2, :cond_1

    .line 2055
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    :cond_1
    const-string v3, "id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2059
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2060
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    add-int/lit8 v2, v2, 0x1

    .line 2063
    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->getParentThemeIdentifier(I)I

    move-result v1

    goto :goto_0

    .line 2065
    :cond_2
    :goto_1
    const-string v3, "], Themes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2067
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
