.class public Landroid/mtp/MtpDatabaseExtPlugin;
.super Ljava/lang/Object;
.source "MtpDatabaseExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist getInstance:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/content/Context;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Landroid/mtp/IMtpDatabaseExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 39
    const-class v0, Landroid/mtp/MtpDatabaseExtPlugin;

    const-string v1, "android.mtp.MtpDatabaseExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabaseExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
