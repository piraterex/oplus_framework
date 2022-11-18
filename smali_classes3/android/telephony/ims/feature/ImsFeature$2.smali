.class Landroid/telephony/ims/feature/ImsFeature$2;
.super Ljava/util/HashMap;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 149
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNAVAILABLE"

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/feature/ImsFeature$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INITIALIZING"

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/feature/ImsFeature$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "READY"

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/feature/ImsFeature$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method
