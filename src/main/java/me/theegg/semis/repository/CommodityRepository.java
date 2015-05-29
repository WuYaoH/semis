package me.theegg.semis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import me.theegg.semis.domain.Commodity;

public interface CommodityRepository extends JpaRepository<Commodity, String> {

}
