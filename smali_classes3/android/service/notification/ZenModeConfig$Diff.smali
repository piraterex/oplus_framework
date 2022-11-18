.class public Landroid/service/notification/ZenModeConfig$Diff;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Diff"
.end annotation


# instance fields
.field private final greylist-max-o lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddLine(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 2044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    return-void
.end method

.method private greylist-max-o addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 3
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 2061
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    return-object p0
.end method


# virtual methods
.method public greylist-max-o addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/Object;
    .param p3, "to"    # Ljava/lang/Object;

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "subitem"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/Object;
    .param p4, "to"    # Ljava/lang/Object;

    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 2074
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Diff["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2050
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2051
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2052
    if-lez v2, :cond_0

    .line 2053
    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    :cond_0
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2057
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
