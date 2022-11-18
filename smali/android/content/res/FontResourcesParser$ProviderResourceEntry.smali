.class public final Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"

# interfaces
.implements Landroid/content/res/FontResourcesParser$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final greylist-max-o mCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mProviderAuthority:Ljava/lang/String;

.field private final greylist-max-o mProviderPackage:Ljava/lang/String;

.field private final greylist-max-o mQuery:Ljava/lang/String;

.field private final blacklist mSystemFontFamilyName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p5, "systemFontFamilyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    .local p4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderAuthority:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderPackage:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mQuery:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mCerts:Ljava/util/List;

    .line 60
    iput-object p5, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public greylist-max-o getAuthority()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getCerts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mCerts:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getPackage()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getQuery()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSystemFontFamilyName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    return-object v0
.end method
