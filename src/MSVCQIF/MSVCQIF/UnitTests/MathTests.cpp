//
//
//


	std::vector<M::Vector> pts;
		pts.push_back(M::Vector( 5,3,0)); pts.push_back(M::Vector( 5,3,2)); pts.push_back(M::Vector( 5,3,5));
		str+=ToString(pts);
		str+="=======================\n";
		M::AddNoise(pts, -0.001, 0.001);
		str+=ToString(pts);
		fair.SaveReport(path+"\\Noise.txt", str);

		//LinearRegression3D(pts, c0, c1, c2);

		//str+=StrFormat("c0 = %f c1 = %f c2 = %f\n" , c0, c1, c2);
		//fair.SaveReport(path+"\\Linear.txt", str);
		//for(size_t i=0; i< pts.size(); i++)
		//{
		//	str+=StrFormat("%f %f %f \n", pts[i].x, pts[i].y, pts[i].z);
		//}

		//pts.push_back(M::Vector(1,1,5)); pts.push_back(M::Vector(3,3,5)); pts.push_back(M::Vector(5,5,5));
		//pts = M::CircleGenerator(500, 8.91, M::Vector(1,2,0)); 
		//std::vector<M::Vector> scaledpts= M::CircleScale(5.0/8.91, M::Vector(1,2,0),  pts);
		//for(size_t i=0; i< scaledpts.size(); i++)
		//{
		//	str+=StrFormat("%f %f %f \n", scaledpts[i].x, scaledpts[i].y, scaledpts[i].z);
		//}

