.class Landroid/util/apk/ApkSignatureVerifierSocExtImpl$LazyHolder;
.super Ljava/lang/Object;
.source "ApkSignatureVerifierSocExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureVerifierSocExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/util/apk/ApkSignatureVerifierSocExtImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/util/apk/ApkSignatureVerifierSocExtImpl;
    .locals 1

    sget-object v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl$LazyHolder;->INSTANCE:Landroid/util/apk/ApkSignatureVerifierSocExtImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/apk/ApkSignatureVerifierSocExtImpl;-><init>(Landroid/util/apk/ApkSignatureVerifierSocExtImpl-IA;)V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifierSocExtImpl$LazyHolder;->INSTANCE:Landroid/util/apk/ApkSignatureVerifierSocExtImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
