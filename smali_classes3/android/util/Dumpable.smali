.class public interface abstract Landroid/util/Dumpable;
.super Ljava/lang/Object;
.source "Dumpable.java"


# virtual methods
.method public abstract whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
