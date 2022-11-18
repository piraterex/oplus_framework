.class public Lcom/android/internal/app/chooser/DisplayResolveInfoExtPlugin;
.super Ljava/lang/Object;
.source "DisplayResolveInfoExtPlugin.java"


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
            "Lcom/android/internal/app/chooser/IDisplayResolveInfoExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/android/internal/app/chooser/DisplayResolveInfoExtPlugin;

    const-string v1, "com.android.internal.app.chooser.DisplayResolveInfoExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/chooser/DisplayResolveInfoExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
