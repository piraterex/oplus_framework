.class public interface abstract Landroid/content/pm/IPackageParserExt;
.super Ljava/lang/Object;
.source "IPackageParserExt.java"


# virtual methods
.method public blacklist hookParseActivityAlias(Landroid/content/pm/PackageParser$Activity;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "target"    # Landroid/content/pm/PackageParser$Activity;

    .line 32
    return-void
.end method

.method public blacklist hookSetMaxAspectRatio(Landroid/content/pm/PackageParser$Package;F)V
    .locals 0
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "maxAspectRatio"    # F

    .line 28
    return-void
.end method
