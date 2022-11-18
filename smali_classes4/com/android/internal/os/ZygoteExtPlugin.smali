.class public Lcom/android/internal/os/ZygoteExtPlugin;
.super Ljava/lang/Object;
.source "ZygoteExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist constructor:Lcom/oplus/reflect/RefConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefConstructor<",
            "Lcom/android/internal/os/IZygoteExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 7
    const-class v0, Lcom/android/internal/os/ZygoteExtPlugin;

    const-string v1, "com.android.internal.os.ZygoteExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ZygoteExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
